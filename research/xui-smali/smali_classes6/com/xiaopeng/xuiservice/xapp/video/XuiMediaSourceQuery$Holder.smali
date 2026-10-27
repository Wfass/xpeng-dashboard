.class Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$Holder;
.super Ljava/lang/Object;
.source "XuiMediaSourceQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static instance:Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 106
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$Holder;->instance:Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;
    .locals 1

    .line 105
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$Holder;->instance:Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;

    return-object v0
.end method
