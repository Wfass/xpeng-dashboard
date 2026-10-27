.class public Lcom/xiaopeng/track/BIConfig;
.super Ljava/lang/Object;
.source "BIConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/track/BIConfig$Builder;
    }
.end annotation


# instance fields
.field private bid:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private moduleName:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/track/BIConfig$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/xiaopeng/track/BIConfig$Builder;->access$000(Lcom/xiaopeng/track/BIConfig$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/track/BIConfig;->context:Landroid/content/Context;

    .line 14
    invoke-static {p1}, Lcom/xiaopeng/track/BIConfig$Builder;->access$100(Lcom/xiaopeng/track/BIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/track/BIConfig;->moduleName:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/xiaopeng/track/BIConfig$Builder;->access$200(Lcom/xiaopeng/track/BIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/track/BIConfig;->pid:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/xiaopeng/track/BIConfig$Builder;->access$300(Lcom/xiaopeng/track/BIConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/track/BIConfig;->bid:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/xiaopeng/track/BIConfig$Builder;->access$400(Lcom/xiaopeng/track/BIConfig$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/track/BIConfig;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBID()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/track/BIConfig;->bid:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/track/BIConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/track/BIConfig;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public getPID()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/track/BIConfig;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/track/BIConfig;->source:Ljava/lang/String;

    return-object v0
.end method
