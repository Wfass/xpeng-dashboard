.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask$1;
.super Ljava/lang/Object;
.source "BaseAwsTask.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->createAwsUploadClient()Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    .line 184
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
