.class public Lcom/xiaopeng/xuimanager/nova/NovaError;
.super Ljava/lang/Object;
.source "NovaError.java"


# static fields
.field public static final DOWNLOAD_ERROR_DECRYPT:I = 0x6a

.field public static final DOWNLOAD_ERROR_DECRYPTED_MD5:I = 0x6b

.field public static final DOWNLOAD_ERROR_DISK_NO_SPACE:I = 0x66

.field public static final DOWNLOAD_ERROR_FILE_NOT_EXIST:I = 0x6c

.field public static final DOWNLOAD_ERROR_IO:I = 0x68

.field public static final DOWNLOAD_ERROR_MD5:I = 0x69

.field public static final DOWNLOAD_ERROR_NETWORK:I = 0x65

.field public static final DOWNLOAD_ERROR_NOT_ZIP:I = 0x67

.field public static final SUCCESS:I

.field private static final errors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/nova/NovaError;->errors:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "DOWNLOAD_ERROR_NETWORK"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x66

    const-string v2, "DOWNLOAD_ERROR_DISK_NO_SPACE"

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x67

    const-string v2, "DOWNLOAD_ERROR_NOT_ZIP"

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x68

    const-string v2, "DOWNLOAD_ERROR_IO"

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x69

    const-string v2, "DOWNLOAD_ERROR_MD5"

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x6a

    const-string v2, "DOWNLOAD_ERROR_DECRYPT"

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x6b

    const-string v2, "DOWNLOAD_ERROR_DECRYPTED_MD5"

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static errorMsg(I)Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/xuimanager/nova/NovaError;->errors:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "unknown"

    :goto_0
    return-object p0
.end method
