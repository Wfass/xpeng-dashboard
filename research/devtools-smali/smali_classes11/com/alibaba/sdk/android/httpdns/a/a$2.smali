.class Lcom/alibaba/sdk/android/httpdns/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/httpdns/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/sdk/android/httpdns/a/a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/a/a$2;->b:Lcom/alibaba/sdk/android/httpdns/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Lcom/alibaba/sdk/android/beacon/Beacon$Error;)V
    .locals 3

    const-string v0, "HTTPDNS:BeaconManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beacon error. errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alibaba/sdk/android/beacon/Beacon$Error;->errCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", errorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/alibaba/sdk/android/beacon/Beacon$Error;->errMsg:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
