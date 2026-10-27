.class public Lcom/xiaopeng/carcontrol/util/SafeExamUtils;
.super Ljava/lang/Object;
.source "SafeExamUtils.java"


# static fields
.field private static final CAR_TYPE_KEY:Ljava/lang/String; = "carType"

.field private static final CAR_TYPE_PARAM_D22:Ljava/lang/String; = "G3i"

.field private static final CAR_TYPE_PARAM_D55:Ljava/lang/String; = "P5"

.field private static final CAR_TYPE_PARAM_E28:Ljava/lang/String; = "P7"

.field private static final CAR_TYPE_PARAM_E28A:Ljava/lang/String; = "E28A"

.field private static final CAR_TYPE_PARAM_E28B:Ljava/lang/String; = "E28B"

.field private static final CAR_TYPE_PARAM_E38:Ljava/lang/String; = "E38"

.field private static final CAR_TYPE_PARAM_E38A:Ljava/lang/String; = "E38A"

.field private static final CAR_TYPE_PARAM_F30:Ljava/lang/String; = "F30"

.field private static final CAR_TYPE_PARAM_F57:Ljava/lang/String; = "F57"

.field private static final CAR_TYPE_PARAM_H93:Ljava/lang/String; = "H93"

.field private static final CONNECT_TIME_OUT:I = 0x1388

.field private static final EXAM_APA_QR_STUDY_URL:Ljava/lang/String; = "/usertask/help5.html"

.field private static final EXAM_CNGP_QR_STUDY_URL:Ljava/lang/String; = "/usertask/help6.html"

.field private static final EXAM_DRIVING_QR_STUDY_URL:Ljava/lang/String; = "/usertask/help12.html"

.field private static final EXAM_DRIVING_WITH_LIDAR_QR_STUDY_URL:Ljava/lang/String; = "/usertask/help10.html"

.field private static final EXAM_LCC_L_QR_STUDY_URL:Ljava/lang/String; = "/usertask/help8.html"

.field private static final EXAM_LCC_QR_STUDY_URL:Ljava/lang/String; = "/usertask/help2.html"

.field private static final EXAM_MEM_PARK_QR_STUDY_URL:Ljava/lang/String; = "/usertask/help3.html"

.field private static final EXAM_NGP_QR_STUDY_URL:Ljava/lang/String; = "/usertask/help.html"

.field private static final EXAM_PARKING_QR_STUDY_URL:Ljava/lang/String; = "/usertask/help13.html"

.field private static final EXAM_PARKING_WITH_LIDAR_QR_STUDY_URL:Ljava/lang/String; = "/usertask/help11.html"

.field private static final EXAM_QR_INFO_URL:Ljava/lang/String; = "/task/in/v2/getTaskInfoById"

.field private static final EXAM_QR_STATE_URL:Ljava/lang/String; = "/task/in/v2/getTaskStateById"

.field private static final EXAM_QR_STUDY_DEPLOY_HOST:Ljava/lang/String; = "https://ur.deploy-test.xiaopeng.com"

.field private static final EXAM_QR_STUDY_HOST:Ljava/lang/String; = "https://ur.xiaopeng.com"

.field private static final EXAM_QR_STUDY_TEST_HOST:Ljava/lang/String; = "http://10.0.13.28:8902"

.field private static final EXAM_SUPER_VPA_QR_STUDY_URL:Ljava/lang/String; = "/usertask/help7.html"

.field private static final EXAM_TASK_LIST_STATE_URL:Ljava/lang/String; = "/task/in/v2/getTaskStateList"

.field private static final EXAM_TASK_STATE_URL:Ljava/lang/String; = "/task/in/v2/postTestResult"

.field private static final EXAM_XNGP_QR_STUDY_URL:Ljava/lang/String; = "/usertask/help9.html"

.field private static final TAG:Ljava/lang/String; = "X_EXAM_SafeExamUtils"

.field public static final X_EXAM_LOG_PREFIX:Ljava/lang/String; = "X_EXAM_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFetchExamRequest(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "otp",
            "taskId"
        }
    .end annotation

    .line 329
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoRequest;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoRequest;-><init>()V

    .line 330
    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoRequest;->setTaskId(J)V

    .line 331
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 332
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "otp"

    .line 333
    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ModuleUtils;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "X_EXAM_SafeExamUtils"

    if-nez v0, :cond_0

    const-string p0, "Http module is null"

    .line 336
    invoke-static {v2, p0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    return-object p0

    .line 339
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getTaskInfoHost()Ljava/lang/String;

    move-result-object v3

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build fetch exam request:\nRequest url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "postContent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 342
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->config()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->connectTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    .line 343
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/EnvironmentUtils;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 345
    invoke-interface {v0, v3, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    const-string/jumbo v2, "xp_car_setting_car"

    .line 346
    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->appId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    .line 347
    invoke-interface {p0, p3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    .line 348
    invoke-interface {p0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object p0

    const/4 p3, 0x3

    .line 349
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "XP-Encryption-Type"

    invoke-interface {p0, v0, p3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object p0

    const-string p3, "POST"

    .line 351
    invoke-static {p0, p3, p2, v1, p1}, Lcom/xiaopeng/carcontrol/util/NoneSecurityUtils;->getAuthorization(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "XP-Authorization"

    invoke-interface {p0, v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 355
    invoke-static {p0, p3, p2, v1}, Lcom/xiaopeng/carcontrol/util/NoneSecurityUtils;->getSignature(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "XP-Signature"

    invoke-interface {p0, p2, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    return-object p0
.end method

.method public static buildFetchGroupResultRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "otp",
            "taskIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;"
        }
    .end annotation

    .line 286
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListRequest;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListRequest;-><init>()V

    .line 287
    invoke-virtual {v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskListRequest;->setTaskIds(Ljava/util/List;)V

    .line 288
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "otp"

    .line 290
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ModuleUtils;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "X_EXAM_SafeExamUtils"

    if-nez v1, :cond_0

    const-string p0, "Http module is null"

    .line 293
    invoke-static {v3, p0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    return-object p0

    .line 296
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getTaskListStateUrl()Ljava/lang/String;

    move-result-object v4

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Build fetch group result request:\nRequest url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "postContent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 299
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->config()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->connectTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    .line 300
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/EnvironmentUtils;->getAppSecret()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    .line 302
    invoke-interface {v1, v4, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    const-string/jumbo v3, "xp_car_setting_car"

    .line 303
    invoke-interface {v1, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->appId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    .line 304
    invoke-interface {p0, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    .line 305
    invoke-interface {p0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object p0

    const/4 v0, 0x3

    .line 306
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XP-Encryption-Type"

    invoke-interface {p0, v1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object p0

    const-string v0, "POST"

    .line 308
    invoke-static {p0, v0, p2, v2, p1}, Lcom/xiaopeng/carcontrol/util/NoneSecurityUtils;->getAuthorization(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "XP-Authorization"

    invoke-interface {p0, v1, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 312
    invoke-static {p0, v0, p2, v2}, Lcom/xiaopeng/carcontrol/util/NoneSecurityUtils;->getSignature(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "XP-Signature"

    invoke-interface {p0, p2, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    return-object p0
.end method

.method public static buildFetchResultRequest(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "otp",
            "taskId"
        }
    .end annotation

    .line 243
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoRequest;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoRequest;-><init>()V

    .line 244
    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskInfoRequest;->setTaskId(J)V

    .line 245
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 246
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "otp"

    .line 247
    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ModuleUtils;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "X_EXAM_SafeExamUtils"

    if-nez v0, :cond_0

    const-string p0, "Http module is null"

    .line 250
    invoke-static {v2, p0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    return-object p0

    .line 253
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getExamTaskStateUrl()Ljava/lang/String;

    move-result-object v3

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build fetch result request: Request url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "postContent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 256
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->config()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->connectTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    .line 257
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/EnvironmentUtils;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 259
    invoke-interface {v0, v3, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    const-string/jumbo v2, "xp_car_setting_car"

    .line 260
    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->appId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    .line 261
    invoke-interface {p0, p3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    .line 262
    invoke-interface {p0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object p0

    const/4 p3, 0x3

    .line 263
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "XP-Encryption-Type"

    invoke-interface {p0, v0, p3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object p0

    const-string p3, "POST"

    .line 265
    invoke-static {p0, p3, p2, v1, p1}, Lcom/xiaopeng/carcontrol/util/NoneSecurityUtils;->getAuthorization(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "XP-Authorization"

    invoke-interface {p0, v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 269
    invoke-static {p0, p3, p2, v1}, Lcom/xiaopeng/carcontrol/util/NoneSecurityUtils;->getSignature(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "XP-Signature"

    invoke-interface {p0, p2, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    return-object p0
.end method

.method public static buildPostResultRequest(Ljava/lang/String;Ljava/lang/String;JI)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "otp",
            "taskId",
            "result"
        }
    .end annotation

    .line 200
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultRequest;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultRequest;-><init>()V

    .line 201
    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultRequest;->setTaskId(J)V

    .line 202
    invoke-virtual {v0, p4}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/TaskResultRequest;->setState(I)V

    .line 203
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 204
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p4, "otp"

    .line 205
    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ModuleUtils;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object p4

    const/4 v0, 0x0

    const-string v1, "X_EXAM_SafeExamUtils"

    if-nez p4, :cond_0

    const-string p0, "Http module is null"

    .line 208
    invoke-static {v1, p0, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    return-object p0

    .line 211
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getTaskStateUrl()Ljava/lang/String;

    move-result-object v2

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build post result request:\nRequest url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "postContent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 214
    invoke-interface {p4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->config()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->connectTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    .line 215
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/EnvironmentUtils;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-interface {p4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p4

    .line 217
    invoke-interface {p4, v2, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p4

    const-string/jumbo v1, "xp_car_setting_car"

    .line 218
    invoke-interface {p4, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->appId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p4

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    .line 219
    invoke-interface {p0, p3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    .line 220
    invoke-interface {p0, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object p0

    const/4 p3, 0x3

    .line 221
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "XP-Encryption-Type"

    invoke-interface {p0, p4, p3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object p0

    const-string p3, "POST"

    .line 223
    invoke-static {p0, p3, p2, v0, p1}, Lcom/xiaopeng/carcontrol/util/NoneSecurityUtils;->getAuthorization(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "XP-Authorization"

    invoke-interface {p0, p4, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 227
    invoke-static {p0, p3, p2, v0}, Lcom/xiaopeng/carcontrol/util/NoneSecurityUtils;->getSignature(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "XP-Signature"

    invoke-interface {p0, p2, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    return-object p0
.end method

.method public static getAutoParkQrStudyUrl()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getStudyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usertask/help5.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->wrapCarTypeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCNGPQrStudyUrl()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getStudyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usertask/help6.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->wrapCarTypeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCarTypeForUrl()Ljava/lang/String;
    .locals 5

    .line 88
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/CarStatusUtils;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v0, "X_EXAM_SafeExamUtils"

    const-string v1, "get hardware car type is null"

    .line 90
    invoke-static {v0, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v3, v1

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "Q8B"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "Q7A"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "Q3A"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0x8

    goto :goto_1

    :sswitch_3
    const-string v3, "QD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_4
    const-string v3, "QB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_5
    const-string v3, "Q9"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "Q8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_7
    const-string v3, "Q7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_8
    const-string v3, "Q6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_9
    const-string v3, "Q3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_a
    const-string v4, "Q1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    :goto_1
    packed-switch v3, :pswitch_data_0

    return-object v2

    :pswitch_0
    const-string v0, "E28B"

    return-object v0

    :pswitch_1
    const-string v0, "E38A"

    return-object v0

    :pswitch_2
    const-string v0, "F57"

    return-object v0

    :pswitch_3
    const-string v0, "H93"

    return-object v0

    :pswitch_4
    const-string v0, "F30"

    return-object v0

    :pswitch_5
    const-string v0, "E28A"

    return-object v0

    :pswitch_6
    const-string v0, "E38"

    return-object v0

    :pswitch_7
    const-string v0, "G3i"

    return-object v0

    :pswitch_8
    const-string v0, "P5"

    return-object v0

    :pswitch_9
    const-string v0, "P7"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xa00 -> :sswitch_a
        0xa02 -> :sswitch_9
        0xa05 -> :sswitch_8
        0xa06 -> :sswitch_7
        0xa07 -> :sswitch_6
        0xa08 -> :sswitch_5
        0xa11 -> :sswitch_4
        0xa13 -> :sswitch_3
        0x1367f -> :sswitch_2
        0x136fb -> :sswitch_1
        0x1371b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDrivingQrStudyUrl()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getStudyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usertask/help12.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->wrapCarTypeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDrivingWithLidarQrStudyUrl()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getStudyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usertask/help10.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->wrapCarTypeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExamTaskStateUrl()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/task/in/v2/getTaskStateById"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLccQrStudyUrl()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getStudyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isSupportCNgp"

    .line 149
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isSupportLidarSafeExam"

    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/usertask/help8.html"

    goto :goto_0

    :cond_0
    const-string v1, "/usertask/help2.html"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->wrapCarTypeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMemParkQrStudyUrl()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getStudyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isSupportCNgp"

    .line 159
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isSupportLidarSafeExam"

    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/usertask/help7.html"

    goto :goto_0

    :cond_0
    const-string v1, "/usertask/help3.html"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->wrapCarTypeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNgpQrStudyUrl()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getStudyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usertask/help.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->wrapCarTypeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParkingQrStudyUrl()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getStudyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usertask/help13.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->wrapCarTypeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParkingWithLidarQrStudyUrl()Ljava/lang/String;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getStudyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usertask/help11.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->wrapCarTypeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStudyHost()Ljava/lang/String;
    .locals 2

    .line 77
    sget-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    const-string v1, "https://xmart.xiaopeng.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://ur.xiaopeng.com"

    return-object v0

    .line 79
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    const-string v1, "https://xmart.deploy-test.xiaopeng.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://ur.deploy-test.xiaopeng.com"

    return-object v0

    :cond_1
    const-string v0, "http://10.0.13.28:8902"

    return-object v0
.end method

.method public static getTaskInfoHost()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/task/in/v2/getTaskInfoById"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTaskListStateUrl()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/task/in/v2/getTaskStateList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTaskStateUrl()Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/task/in/v2/postTestResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXNGPQrStudyUrl()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getStudyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usertask/help9.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->wrapCarTypeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseResponse(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 393
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 398
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 399
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->code(I)V

    const-string p0, "data"

    .line 400
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->data(Ljava/lang/String;)V

    const-string p0, "msg"

    .line 401
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->message(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 403
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static wrapCarTypeParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    const-string v0, "X_EXAM_SafeExamUtils"

    if-nez p0, :cond_0

    const-string/jumbo p0, "wrap car type, url is null"

    .line 363
    invoke-static {v0, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 367
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->getCarTypeForUrl()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "car type is null, just return origin url"

    .line 369
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 373
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    .line 374
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v4, "="

    const-string v5, "carType"

    if-eqz p0, :cond_2

    const-string p0, "&"

    .line 375
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrap url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
