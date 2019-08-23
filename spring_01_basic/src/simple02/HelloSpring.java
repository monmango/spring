package simple02;

//인터페이스를 이용해서 결합도를 낮출수 있다.(의존 관계를 약하게 설정함)
public class HelloSpring  {

   public static void main(String[] args) {
      MessageBean bean = new MessageBeanEnglish();
      bean.sayHello("spring");
      
      bean = new MessageBeanKorea();
      bean.sayHello("스프링");
   }//end main()
   
   
   
}//end class
