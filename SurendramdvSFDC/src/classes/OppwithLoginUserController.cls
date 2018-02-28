public class OppwithLoginUserController {

    public List<Opportunity> getOpplogin() {
        List<Opportunity> opplo = [Select Id, name, owner.name from Opportunity where Owner.name = :UserInfo.getName()];
        return opplo;
    }

}