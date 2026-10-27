.class Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$4;
.super Ljava/lang/Object;
.source "AccountViewModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestFreengpUidResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field final synthetic val$postString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$postString"
        }
    .end annotation

    .line 694
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$4;->val$postString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X_EXAM_AccountViewModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$800(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;-><init>(JI)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    const/4 v0, 0x0

    .line 700
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 701
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    const-string p1, "data"

    .line 702
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 704
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const-string v1, "X_EXAM_AccountViewModel"

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuccess: result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "muid:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$900(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "vin:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$4;->val$postString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 709
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 711
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1000(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$900(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->setFreeNgpUidResult(Ljava/lang/String;Z)V

    .line 712
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1100(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
