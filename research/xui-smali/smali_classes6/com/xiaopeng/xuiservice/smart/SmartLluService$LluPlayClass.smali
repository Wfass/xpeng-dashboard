.class Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;
.super Ljava/lang/Object;
.source "SmartLluService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLluService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LluPlayClass"
.end annotation


# instance fields
.field danceName:Ljava/lang/String;

.field loop:I

.field mLanglightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 0

    .line 1816
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Lcom/xiaopeng/xuiservice/smart/SmartLluService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService$1;

    .line 1816
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    return-void
.end method


# virtual methods
.method public getDanceName()Ljava/lang/String;
    .locals 1

    .line 1842
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->danceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanglightEffect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
    .locals 1

    .line 1822
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->mLanglightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    return-object v0
.end method

.method public getLoop()I
    .locals 1

    .line 1830
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->loop:I

    return v0
.end method

.method public setDanceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "danceName"    # Ljava/lang/String;

    .line 1838
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->danceName:Ljava/lang/String;

    .line 1839
    return-void
.end method

.method public setLanglightEffect(Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)V
    .locals 0
    .param p1, "lighteffect"    # Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 1826
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->mLanglightEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    .line 1827
    return-void
.end method

.method public setLoop(I)V
    .locals 0
    .param p1, "loop"    # I

    .line 1834
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->loop:I

    .line 1835
    return-void
.end method
