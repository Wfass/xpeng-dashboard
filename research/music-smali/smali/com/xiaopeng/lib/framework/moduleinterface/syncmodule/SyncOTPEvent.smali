.class public final Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncOTPEvent;
.super Ljava/lang/Object;
.source "SyncOTPEvent.java"


# instance fields
.field public callback:Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/IOTPCallback;

.field public deviceID:Ljava/lang/String;

.field public seq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/IOTPCallback;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncOTPEvent;->seq:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncOTPEvent;->deviceID:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncOTPEvent;->callback:Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/IOTPCallback;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncOTPEvent { seq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncOTPEvent;->seq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; deviceID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncOTPEvent;->deviceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
