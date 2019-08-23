package simple01;

/*
 * 결합도
 * 1 클래스간의 상호 연결성을 측정을 의미한다.
 * 2 낮은 결합도를 가지려면 하나의 객체 변경이 다른 객체에 영향을 미쳐서는 안된다.
 */

public class HelloSpring {
   
   public static void main(String[] args) {
      //MessageBean클래스 이름을 직접적으로 사용하고 있기 때문에
      // 높은 결합도를 가지고 있다.
      MessageBean bean = new MessageBean();//결합도가 제일 높다
      bean.sayhello("spring");
   }//end main()

}//end class