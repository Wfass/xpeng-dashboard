.class public Lcom/xiaopeng/xuiservice/innerutils/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# static fields
.field public static final ID_XUISERVICE_DIALOG_RUN_DENIED:Ljava/lang/String; = "xuiservice_app_run_denied"

.field private static final TAG:Ljava/lang/String; = "DialogUtil"

.field private static final mUseXuiWidget:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "positiveButtonSting"    # Ljava/lang/String;
    .param p5, "cancelable"    # Z
    .param p6, "positiveDuration"    # Z
    .param p7, "duration"    # I

    .line 34
    const-string v0, "DialogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show dialog msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p2

    move-object v6, v2

    move/from16 v7, p5

    move-object v8, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method

.method public static showRunDeniedDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "denyMessage"    # Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "positiveButtonSting":Ljava/lang/String;
    const-string/jumbo v3, "xuiservice_app_run_denied"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/16 v9, 0xa

    move-object v2, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, v1

    invoke-static/range {v2 .. v9}, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 81
    return-void
.end method
