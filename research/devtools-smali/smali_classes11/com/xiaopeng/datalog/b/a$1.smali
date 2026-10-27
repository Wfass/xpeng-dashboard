.class Lcom/xiaopeng/datalog/b/a$1;
.super Ljava/lang/Object;
.source "DataBackupHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/datalog/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qt:Ljava/lang/String;

.field final synthetic qu:Ljava/lang/String;

.field final synthetic qv:Lcom/xiaopeng/datalog/b/a;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/b/a;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/datalog/b/a$1;->qv:Lcom/xiaopeng/datalog/b/a;

    iput-object p2, p0, Lcom/xiaopeng/datalog/b/a$1;->qt:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/datalog/b/a$1;->qu:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/datalog/b/a$1;->val$context:Landroid/content/Context;

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
    const-string v1, "vehicleId"

    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->ln()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "message"

    iget-object v2, p0, Lcom/xiaopeng/datalog/b/a$1;->qt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "md5"

    iget-object v2, p0, Lcom/xiaopeng/datalog/b/a$1;->qt:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/d;->dJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

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
    iget-object v1, p0, Lcom/xiaopeng/datalog/b/a$1;->qv:Lcom/xiaopeng/datalog/b/a;

    iget-object v2, p0, Lcom/xiaopeng/datalog/b/a$1;->qu:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/datalog/b/a$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/datalog/b/a;->a(Lcom/xiaopeng/datalog/b/a;Ljava/lang/String;Landroid/content/Context;)V

    .line 82
    iget-object v1, p0, Lcom/xiaopeng/datalog/b/a$1;->qv:Lcom/xiaopeng/datalog/b/a;

    iget-object v2, p0, Lcom/xiaopeng/datalog/b/a$1;->qu:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/datalog/b/a$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/datalog/b/a;->b(Lcom/xiaopeng/datalog/b/a;Ljava/lang/String;Landroid/content/Context;)V

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/datalog/b/a$1;->qv:Lcom/xiaopeng/datalog/b/a;

    iget-object v2, p0, Lcom/xiaopeng/datalog/b/a$1;->qu:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/datalog/b/a$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v0, v3}, Lcom/xiaopeng/datalog/b/a;->a(Lcom/xiaopeng/datalog/b/a;Ljava/lang/String;[BLandroid/content/Context;)V

    .line 85
    return-void
.end method
