.class final Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;
.super Ljava/lang/Object;
.source "Peripheral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommandContext"
.end annotation


# instance fields
.field public callback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;

.field public command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;)V
    .locals 0
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;
    .param p3, "command"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    .line 981
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 982
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->callback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;

    .line 983
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    .line 984
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->command:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    .line 988
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$CommandContext;->callback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;

    .line 989
    return-void
.end method
