.class public Lcom/xiaopeng/track/BIConfig$Builder;
.super Ljava/lang/Object;
.source "BIConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/track/BIConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bid:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private moduleName:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/track/BIConfig$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/track/BIConfig$Builder;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/track/BIConfig$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/track/BIConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/track/BIConfig$Builder;->moduleName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/track/BIConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/track/BIConfig$Builder;->pid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/track/BIConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/track/BIConfig$Builder;->bid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/track/BIConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/track/BIConfig$Builder;->source:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bid(Ljava/lang/String;)Lcom/xiaopeng/track/BIConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonId"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/track/BIConfig$Builder;->bid:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaopeng/track/BIConfig;
    .locals 1

    .line 72
    new-instance v0, Lcom/xiaopeng/track/BIConfig;

    invoke-direct {v0, p0}, Lcom/xiaopeng/track/BIConfig;-><init>(Lcom/xiaopeng/track/BIConfig$Builder;)V

    return-object v0
.end method

.method public moduleName(Ljava/lang/String;)Lcom/xiaopeng/track/BIConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleName"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/track/BIConfig$Builder;->moduleName:Ljava/lang/String;

    return-object p0
.end method

.method public pid(Ljava/lang/String;)Lcom/xiaopeng/track/BIConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageId"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/track/BIConfig$Builder;->pid:Ljava/lang/String;

    return-object p0
.end method

.method public source(Ljava/lang/String;)Lcom/xiaopeng/track/BIConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/track/BIConfig$Builder;->source:Ljava/lang/String;

    return-object p0
.end method
