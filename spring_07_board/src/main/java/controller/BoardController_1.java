package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dto.BoardDTO;
import dto.PageDTO;
import service.BoardService;


//http://localhost:8090/myboard/list.sb
@Controller
public class BoardController_1 {
   private BoardService service;
   private int currentPage;
   private PageDTO pdto;
   
   public BoardController_1() {

   }
   
   public void setService(BoardService service) {
      this.service = service;
   }
   
   @RequestMapping("/list.sb")
   public ModelAndView listMethod(PageDTO pv, ModelAndView mav) {
      int totoalRecord = service.countProcess();//전체 레코드수
      if(totoalRecord >= 1) {
         if(pv.getCurrentPage() == 0) {
            currentPage = 1;
         }else {
            currentPage = pv.getCurrentPage();
         }
         pdto = new PageDTO(currentPage, totoalRecord);
         mav.addObject("pv", pdto);
         mav.addObject("aList", service.listProcess(pdto));
         System.out.println(pv.getCurrentPage());
      }
      
      mav.setViewName("board/list");
      return mav;
   }//end listMethod()///////////
   
   @RequestMapping("/view.sb")
   public ModelAndView viewMethod(int currentPage, int num, ModelAndView mav) {
      
      mav.addObject("dto", service.contentProcess(num));
      mav.addObject("currentPage", currentPage);
      mav.setViewName("board/view");
      return mav;
   }//end viewMethod

   @RequestMapping(value="/write.sb", method = RequestMethod.GET)
   public ModelAndView writeMethod(PageDTO pv, BoardDTO dto, ModelAndView mav) {
      if(dto.getRef() != 0) {//답변글이면??
         mav.addObject("currentPage",pv.getCurrentPage());
         mav.addObject("dto",dto);
      }
      mav.setViewName("board/write");
      return mav;
   }//end viewMethod//////////////////////////
   
   
   @RequestMapping(value = "/write.sb",method = RequestMethod.POST)
   public String writeProMethod(BoardDTO dto, HttpServletRequest request) {
      
      MultipartFile file = dto.getFilename();
      saveCopyfile(file, dto, request);
      
      dto.setIp(request.getRemoteAddr());
      //답변글이면
      if(dto.getRef() != 0) {
         service.reStepProcess(dto);
      }else {//제목글이면
         service.insertProcess(dto);
      }
      
      return "redirect:/list.sb";
   }// end writeProMethod///////////////////////////////////
   
   @RequestMapping(value = "/update.sb", method = RequestMethod.GET)
   public ModelAndView updateMethod(int num, int currentPage, ModelAndView mav) {
      
      mav.addObject("dto",service.updateSelectProcess(num));
      mav.addObject("currentPage", currentPage);
      mav.setViewName("board/update");
   
      return mav;
   }//end updateMethod///////////////////////////////////
   
   @RequestMapping(value = "/update.sb", method = RequestMethod.POST)
   public ModelAndView updateProc(BoardDTO dto, int currentPage,HttpServletRequest request, ModelAndView mav) {
      //기존 첨부파일
      String filename = service.fileSelectprocess(dto.getNum());
      String root = request.getSession().getServletContext().getRealPath("/");
      String saveDirectory = root + "temp"+File.separator;

      //수정할 첨부파일
      MultipartFile file = dto.getFilename();
      
      //수정할 첨부파일이 있으면
      saveCopyfile(file, dto, request);
      
      dto.setIp(request.getRemoteAddr());
      service.updateProcess(dto);
      mav.addObject("currentPage", currentPage);
      mav.setViewName("redirect:/list.sb");
      return mav;
   }//end updateProc////////////////////////
   
   
   
   
   public void saveCopyfile(MultipartFile file, BoardDTO dto, HttpServletRequest request) {
      if(!file.isEmpty()) {//임시기억장치에있는 파일정보
         String fileName=file.getOriginalFilename();
         //중복파일명을 처리하기 위해 난수 발생
         UUID random = UUID.randomUUID();
         String root = request.getSession().getServletContext().getRealPath("/");
         //root 경로 : C:\study\spring_workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\spring_07_baord\
         //root + "temp/"
         //System.out.println(root);
         String saveDirectory=root+"temp"+File.separator;
         File fe = new File(saveDirectory);
         if(!fe.exists()) {
            fe.mkdir();
         }
         File ff = new File(saveDirectory, random + "_"+fileName);
         try {
            FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff));//임시저장 장치에 있는 파일을 읽어와서 file에 저장시킨다.
         } catch (IOException e) {
            e.printStackTrace();
         }
         dto.setUpload(random+"_"+fileName);
      }
   }//end saveCopyfile()///////////////////////////

   @RequestMapping("/delete.sb")
   public ModelAndView deleteMethod(int num, int currentPage,HttpServletRequest request, ModelAndView mav) {
      String upload = service.fileSelectprocess(num);
      if(upload != null) {
         String root = request.getSession().getServletContext().getRealPath("/");
         String saveDirectory = root + "_" + File.separator;
         File fe = new File(saveDirectory, upload);
         fe.delete();
      }
      
      service.deleteProcess(num);
      PageDTO pv =new PageDTO(currentPage, service.countProcess());
      if(pv.getTotalPage() <= currentPage) {
         mav.addObject("currentPage",currentPage);
      }else {
         mav.addObject("currentPage", currentPage);
      }
      mav.setViewName("redirect:/list.sb");
      return mav;
   }
   
   @RequestMapping("/contentdownload.sb")
   public ModelAndView downMethod(int num, ModelAndView mav) {
      mav.addObject("num", num);
      mav.setViewName("download");
      return mav;
   }
   
}//end class
