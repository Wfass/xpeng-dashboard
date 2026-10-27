.class Lcom/xiaopeng/datalog/helper/DataBackupHelper$2;
.super Ljava/lang/Object;
.source "DataBackupHelper.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/datalog/helper/DataBackupHelper;->deleteExpiredFile(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/datalog/helper/DataBackupHelper;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/helper/DataBackupHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/datalog/helper/DataBackupHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$tag"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$2;->this$0:Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    iput-object p2, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$2;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "filename"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$2;->val$tag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".log"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
