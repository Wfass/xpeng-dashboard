.class public Lcom/xiaopeng/commonfunc/utils/DmUtil$TouchTest;
.super Ljava/lang/Object;
.source "DmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/utils/DmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchTest"
.end annotation


# static fields
.field public static final CMD_NAME:[B

.field public static final RUN_TOUCH:I = 0x0

.field public static final STOP_TOUCH:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/DmUtil$TouchTest;->CMD_NAME:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x40t
        0x1ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
