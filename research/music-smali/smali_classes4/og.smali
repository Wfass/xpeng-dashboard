.class public Log;
.super Ljava/lang/Object;
.source "PathParser.java"

# interfaces
.implements Lot;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lot<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Log;

    invoke-direct {v0}, Log;-><init>()V

    sput-object v0, Log;->a:Log;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/parser/moshi/c;F)Landroid/graphics/PointF;
    .locals 0

    .line 16
    invoke-static {p1, p2}, Lny;->b(Lcom/airbnb/lottie/parser/moshi/c;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/airbnb/lottie/parser/moshi/c;F)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Log;->a(Lcom/airbnb/lottie/parser/moshi/c;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
