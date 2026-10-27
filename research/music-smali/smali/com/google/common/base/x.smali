.class public abstract Lcom/google/common/base/x;
.super Ljava/lang/Object;
.source "Ticker.java"


# static fields
.field private static final a:Lcom/google/common/base/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/google/common/base/x$1;

    invoke-direct {v0}, Lcom/google/common/base/x$1;-><init>()V

    sput-object v0, Lcom/google/common/base/x;->a:Lcom/google/common/base/x;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/common/base/x;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/common/base/x;->a:Lcom/google/common/base/x;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method
