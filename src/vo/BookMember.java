package vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@AllArgsConstructor
@NoArgsConstructor   //select 할 때 null이 필요한 경우
@ToString
public class BookMember {
	private String name;
	private String email;
	private String tel;
	private String password;
}
