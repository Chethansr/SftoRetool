public class ProjectTriggerHandler {
    @future(callout=true)
    public static void handle(String projectString) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:shadow_url');
        req.setHeader('content-type', 'application/json');
        req.setMethod('POST');
        req.setBody('{"body" :' + projectString + '}');
        System.debug('{"body" :' + projectString + '}');
        Http http = new Http();
        HTTPResponse res = http.send(req);
        System.debug('response ' + res.getStatusCode());
    }
}