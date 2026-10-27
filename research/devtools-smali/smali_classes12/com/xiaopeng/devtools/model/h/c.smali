.class public Lcom/xiaopeng/devtools/model/h/c;
.super Ljava/lang/Object;
.source "SystemInfoModel.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/h/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/h/c$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private uP:Lcom/xiaopeng/devtools/presenter/g/c;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/presenter/g/c;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/h/c;->mContext:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/h/c;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/h/c;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/h/c;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/model/h/c;)Lcom/xiaopeng/devtools/presenter/g/c;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/h/c;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    return-object p0
.end method


# virtual methods
.method public eG()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->eG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fQ()Ljava/lang/String;
    .locals 2

    .line 47
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getHardwareId()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Unknown"

    :cond_0
    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getIccid()Ljava/lang/String;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method public getMcuVersion()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getMcuVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 1

    .line 42
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 2

    .line 53
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->ln()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Unknown"

    :cond_0
    return-object v0
.end method

.method public hI()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->hI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hJ()V
    .locals 2

    .line 70
    new-instance v0, Lcom/xiaopeng/devtools/model/h/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/devtools/model/h/c$a;-><init>(Lcom/xiaopeng/devtools/model/h/c;Lcom/xiaopeng/devtools/model/h/c$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/h/c$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method
