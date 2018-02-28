public class CallAccountInsert {

    Account acc = new Account();

    public String Phone { get; set; }

    public String nam { get; set; }

    public void submit() {
        acc.Name = nam;
        acc.Phone = Phone;
        INSERT acc;
    }
}