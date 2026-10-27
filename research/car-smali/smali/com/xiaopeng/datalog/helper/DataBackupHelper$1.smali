.class Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;
.super Ljava/lang/Object;
.source "DataBackupHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/datalog/helper/DataBackupHelper;->updateFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/datalog/helper/DataBackupHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/helper/DataBackupHelper;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/datalog/helper/DataBackupHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$tag",
            "val$data"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->this$0:Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    iput-object p2, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$data:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 70
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 71
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v1, "vehicleId"

    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVehicleId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "message"

    iget-object v2, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "md5"

    iget-object v2, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$data:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 75
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 79
    .local v3, "contentBytes":[B
    iget-object v4, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->this$0:Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    iget-object v5, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$tag:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->access$000(Lcom/xiaopeng/datalog/helper/DataBackupHelper;Ljava/lang/String;Landroid/content/Context;)V

    .line 82
    iget-object v4, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->this$0:Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    iget-object v5, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$tag:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->access$100(Lcom/xiaopeng/datalog/helper/DataBackupHelper;Ljava/lang/String;Landroid/content/Context;)V

    .line 84
    iget-object v4, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->this$0:Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    iget-object v5, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$tag:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v5, v3, v6}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->access$200(Lcom/xiaopeng/datalog/helper/DataBackupHelper;Ljava/lang/String;[BLandroid/content/Context;)V

    .line 85
    return-void
.end method
