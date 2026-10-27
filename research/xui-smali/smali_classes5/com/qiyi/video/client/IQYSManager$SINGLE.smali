.class Lcom/qiyi/video/client/IQYSManager$SINGLE;
.super Ljava/lang/Object;
.source "IQYSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiyi/video/client/IQYSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SINGLE"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/qiyi/video/client/IQYSManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lcom/qiyi/video/client/IQYSManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qiyi/video/client/IQYSManager;-><init>(Lcom/qiyi/video/client/IQYSManager$1;)V

    sput-object v0, Lcom/qiyi/video/client/IQYSManager$SINGLE;->INSTANCE:Lcom/qiyi/video/client/IQYSManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
