.class public Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService;
.super Landroid/app/Service;
.source "VuiProtocolTestService.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final stub:Lcom/xiaopeng/speech/vui/vuiengine/IVuiProtocolTest$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "VuiProtocolTestService"

    .line 13
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService$1;-><init>(Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService;->stub:Lcom/xiaopeng/speech/vui/vuiengine/IVuiProtocolTest$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/proxy/VuiProtocolTestService;->stub:Lcom/xiaopeng/speech/vui/vuiengine/IVuiProtocolTest$Stub;

    return-object p1
.end method
