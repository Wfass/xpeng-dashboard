.class Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/utils/StorageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StorageInfo"
.end annotation


# instance fields
.field number:I

.field path:Ljava/lang/String;

.field readonly:Z

.field removable:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "readonly",
            "removable",
            "number"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    .line 57
    iput-boolean p2, p0, Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;->readonly:Z

    .line 58
    iput-boolean p3, p0, Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;->removable:Z

    .line 59
    iput p4, p0, Lcom/xiaopeng/lib/utils/StorageUtils$StorageInfo;->number:I

    return-void
.end method
