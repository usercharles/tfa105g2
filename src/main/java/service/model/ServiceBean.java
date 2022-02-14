package service.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "service")
public class ServiceBean {
	@Id
	@Column(name = "task_no")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer taskNo;

	@Column(name = "customer_name")
	private String customerName;

	@Column(name = "reply_code")
	private Integer replyCode;

	@Column(name = "customer_content")
	private String customerContent;

	@Column(name = "create_datetime")
	private Date createDateTime;

	@Column(name = "reply_datetime")
	private Date replyDateTime;

	@Override
	public String toString() {
		return "ServiceBean [taskNo=" + taskNo + ", customerName=" + customerName + ", replyCode=" + replyCode
				+ ", customerContent=" + customerContent + ", createDateTime=" + createDateTime + ", replyDateTime="
				+ replyDateTime + "]";
	}

	public Integer getTaskNo() {
		return taskNo;
	}

	public void setTaskNo(Integer taskNo) {
		this.taskNo = taskNo;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public Integer getReplyCode() {
		return replyCode;
	}

	public void setReplyCode(Integer replyCode) {
		this.replyCode = replyCode;
	}

	public String getCustomerContent() {
		return customerContent;
	}

	public void setCustomerContent(String customerContent) {
		this.customerContent = customerContent;
	}

	public Date getCreateDateTime() {
		return createDateTime;
	}

	public void setCreateDateTime(Date createDateTime) {
		this.createDateTime = createDateTime;
	}

	public Date getReplyDateTime() {
		return replyDateTime;
	}

	public void setReplyDateTime(Date replyDateTime) {
		this.replyDateTime = replyDateTime;
	}

}
