.class public Lcom/xiaopeng/lludancemanager/util/ResUtil;
.super Ljava/lang/Object;
.source "ResUtil.java"


# static fields
.field public static final DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final RAW:Ljava/lang/String; = "raw"

.field public static TAG:Ljava/lang/String; = "ResUtil"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lludancemanager/util/ResUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawableResByName(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imgName"
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/xiaopeng/lludancemanager/util/ResUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/xiaopeng/lludancemanager/util/ResUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getRawResByName(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawName"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/xiaopeng/lludancemanager/util/ResUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/xiaopeng/lludancemanager/util/ResUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringId"
        }
    .end annotation

    if-gtz p0, :cond_0

    .line 34
    sget-object p0, Lcom/xiaopeng/lludancemanager/util/ResUtil;->TAG:Ljava/lang/String;

    const-string v0, "Invalid String resource id"

    invoke-static {p0, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xiaopeng/lludancemanager/util/ResUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 40
    :catch_0
    sget-object v0, Lcom/xiaopeng/lludancemanager/util/ResUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " failed, return null"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getStringByIdentity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "identity"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/xiaopeng/lludancemanager/util/ResUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 47
    invoke-static {p0}, Lcom/xiaopeng/lludancemanager/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
