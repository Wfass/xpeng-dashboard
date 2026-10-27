.class Lcom/xiaopeng/lib/framework/configuration/internal/Connector$3;
.super Ljava/lang/Object;
.source "Connector.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/configuration/internal/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$3;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeathRecipient binderDied, service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$3;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connector"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$3;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$3;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$3;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$500(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$3;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$202(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$3;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->connect()V

    return-void
.end method
