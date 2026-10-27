.class public Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;
.super Ljava/lang/Object;
.source "StorageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/bean/storage/StorageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StorageData"
.end annotation


# instance fields
.field private final path:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "path"
    .end annotation
.end field

.field private final suffix:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suffix"
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/commonfunc/bean/storage/StorageList;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/commonfunc/bean/storage/StorageList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/bean/storage/StorageList;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;->this$0:Lcom/xiaopeng/commonfunc/bean/storage/StorageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;->path:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;->suffix:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageData{path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", suffix=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/storage/StorageList$StorageData;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
