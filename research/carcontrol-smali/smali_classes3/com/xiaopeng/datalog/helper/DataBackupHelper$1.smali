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
    .locals 4

    .line 70
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 71
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVehicleId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vehicleId"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$data:Ljava/lang/String;

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$data:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "md5"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 75
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->this$0:Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    iget-object v2, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->access$000(Lcom/xiaopeng/datalog/helper/DataBackupHelper;Ljava/lang/String;Landroid/content/Context;)V

    .line 82
    iget-object v1, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->this$0:Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    iget-object v2, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->access$100(Lcom/xiaopeng/datalog/helper/DataBackupHelper;Ljava/lang/String;Landroid/content/Context;)V

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->this$0:Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    iget-object v2, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v0, v3}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->access$200(Lcom/xiaopeng/datalog/helper/DataBackupHelper;Ljava/lang/String;[BLandroid/content/Context;)V

    return-void
.end method
