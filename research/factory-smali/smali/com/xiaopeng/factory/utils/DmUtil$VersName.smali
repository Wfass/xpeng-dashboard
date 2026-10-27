.class public Lcom/xiaopeng/factory/utils/DmUtil$VersName;
.super Ljava/lang/Object;
.source "DmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/utils/DmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersName"
.end annotation


# static fields
.field public static final CMD_NAME:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/factory/utils/DmUtil$VersName;->CMD_NAME:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x40t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
