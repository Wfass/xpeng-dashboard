.class public Lcom/xiaopeng/devtools/model/i/b;
.super Ljava/lang/Object;
.source "UserSettingsModel.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/i/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/i/b$a;,
        Lcom/xiaopeng/devtools/model/i/b$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/model/i/b$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/i/b;-><init>()V

    return-void
.end method

.method public static hM()Lcom/xiaopeng/devtools/model/i/b;
    .locals 1

    .line 37
    invoke-static {}, Lcom/xiaopeng/devtools/model/i/b$b;->hN()Lcom/xiaopeng/devtools/model/i/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public F(Z)V
    .locals 2

    .line 51
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/r;->F(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/i/b;->hL()Z

    move-result p1

    if-nez p1, :cond_0

    .line 53
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/i/b;->setDebugStatus(Z)V

    .line 54
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/b/c;->sleep(J)V

    .line 55
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/i/b;->setDebugStatus(Z)V

    .line 56
    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/b/c;->sleep(J)V

    .line 58
    :cond_0
    return-void
.end method

.method public G(Z)V
    .locals 3

    .line 91
    const-string v0, "UserSettingsModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoCatchLog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/r;->W(Z)V

    .line 93
    if-eqz p1, :cond_0

    .line 94
    const-string p1, "catch_log_d"

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/r;->cL(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_0
    const-string p1, "catch_log_d"

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/r;->cM(Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void
.end method

.method public H(Z)V
    .locals 3

    .line 102
    const-string v0, "UserSettingsModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/r;->H(Z)V

    .line 104
    return-void
.end method

.method public bJ(Ljava/lang/String;)V
    .locals 2

    .line 109
    new-instance v0, Lcom/xiaopeng/devtools/model/i/b$a;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/model/i/b$a;-><init>(Lcom/xiaopeng/devtools/model/i/b;Ljava/lang/String;)V

    .line 110
    new-instance p1, Ljava/lang/Thread;

    const-string v1, "UploadCanThread"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method public hK()Z
    .locals 1

    .line 46
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->hK()Z

    move-result v0

    return v0
.end method

.method public hL()Z
    .locals 2

    .line 62
    const-string v0, "USB_MODE_PERIPHERAL"

    invoke-static {v0}, Lcom/xiaopeng/a/a$e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SWITCH_DEBUG_FILE"

    .line 63
    invoke-static {v1}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 62
    return v0
.end method

.method public setDebugStatus(Z)V
    .locals 3

    .line 68
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    nop

    .line 71
    :cond_0
    if-eq v2, p1, :cond_1

    .line 72
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/r;->U(Z)V

    .line 77
    const-string p1, "sync"

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/m;->ba(Ljava/lang/String;)Ljava/lang/Process;

    .line 78
    return-void
.end method
