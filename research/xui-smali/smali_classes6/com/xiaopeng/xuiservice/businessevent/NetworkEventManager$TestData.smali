.class Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$TestData;
.super Ljava/lang/Object;
.source "NetworkEventManager.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfigurationData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestData"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$TestData;->this$0:Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$1;

    .line 109
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$TestData;-><init>(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 112
    const-string v0, "testData"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 117
    const-string v0, "testData"

    return-object v0
.end method
