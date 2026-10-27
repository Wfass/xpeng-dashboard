.class public Lcom/xiaopeng/carcontrol/helper/UserBookHelper;
.super Ljava/lang/Object;
.source "UserBookHelper.java"


# static fields
.field private static final INTENT_KEY_CALLJUMP:Ljava/lang/String; = "callJump"

.field private static final INTENT_KEY_JUMP:Ljava/lang/String; = "jump"

.field private static final INTENT_KEY_NAME:Ljava/lang/String; = "name"

.field private static final INTENT_KEY_SHARED:Ljava/lang/String; = "sharedId"

.field private static final INTENT_KEY_WORDS:Ljava/lang/String; = "words"

.field private static final KEY_NAME_VALUE1:Ljava/lang/String; = "KEY_WORD"

.field private static final KEY_NAME_VALUE2:Ljava/lang/String; = "CLOSE_USER_BOOK"

.field private static final TAG:Ljava/lang/String; = "UserBookHelper"

.field private static final USERBOOK_ACTION:Ljava/lang/String; = "com.xiaopeng.usermanual.ACTION_LAUNCH"

.field private static final USERBOOK_PACKAGE:Ljava/lang/String; = "com.xiaopeng.usermanual"

.field private static mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeUserBook()V
    .locals 3

    const-string v0, "UserBookHelper"

    const-string v1, "closeUserBook"

    .line 72
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.usermanual.ACTION_LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.usermanual"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    const-string v2, "CLOSE_USER_BOOK"

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static isSupport()Z
    .locals 1

    const-string v0, "isSupportShowUserBook"

    .line 80
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static openUserBook(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keywords",
            "sharedId"
        }
    .end annotation

    const/4 v0, 0x1

    .line 42
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/carcontrol/helper/UserBookHelper;->openUserBook(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static openUserBook(Ljava/lang/String;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keywords",
            "sharedId",
            "jump"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/UserBookHelper;->isSupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openUserBook: keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", jump="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UserBookHelper"

    invoke-static {v3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/UserBookHelper;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    if-nez v0, :cond_1

    .line 49
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v4, Lcom/xiaopeng/carcontrol/viewmodel/scenario/IScenarioViewModel;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sput-object v0, Lcom/xiaopeng/carcontrol/helper/UserBookHelper;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    .line 51
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/UserBookHelper;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->getCurrentUserScenarioValue()Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    move-result-object v0

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scenario: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleSleep:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    if-eq v1, v0, :cond_4

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleCinema:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    if-eq v1, v0, :cond_4

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Meditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    if-ne v1, v0, :cond_2

    goto :goto_0

    .line 59
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.usermanual.ACTION_LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.usermanual"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sharedId"

    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "name"

    const-string v1, "KEY_WORD"

    .line 63
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "words"

    .line 64
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x1

    const-string p1, "callJump"

    .line 65
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const-string p0, "jump"

    .line 67
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/App;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 56
    :cond_4
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p0

    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->hvac_user_manual_toast:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLong(I)V

    return-void
.end method

.method public static openUserBook(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keywords",
            "jump"
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/carcontrol/helper/UserBookHelper;->openUserBook(Ljava/lang/String;IZ)V

    return-void
.end method
