.class Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;
.super Ljava/lang/Object;
.source "ACRCloudClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acrcloud/rec/ACRCloudClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ACRCloudMessage"
.end annotation


# instance fields
.field public mCallback:Ljava/lang/Object;

.field public mParams:Ljava/lang/Object;

.field final synthetic this$0:Lcom/acrcloud/rec/ACRCloudClient;


# direct methods
.method constructor <init>(Lcom/acrcloud/rec/ACRCloudClient;)V
    .locals 1
    .param p1, "this$0"    # Lcom/acrcloud/rec/ACRCloudClient;

    .line 815
    iput-object p1, p0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->this$0:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->mCallback:Ljava/lang/Object;

    .line 817
    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->mParams:Ljava/lang/Object;

    return-void
.end method
