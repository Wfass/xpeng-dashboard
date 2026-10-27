.class public Lnr;
.super Ljava/lang/Object;
.source "FloatParser.java"

# interfaces
.implements Lot;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lot<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lnr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lnr;

    invoke-direct {v0}, Lnr;-><init>()V

    sput-object v0, Lnr;->a:Lnr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/parser/moshi/c;F)Ljava/lang/Float;
    .locals 0

    .line 15
    invoke-static {p1}, Lny;->b(Lcom/airbnb/lottie/parser/moshi/c;)F

    move-result p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/airbnb/lottie/parser/moshi/c;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lnr;->a(Lcom/airbnb/lottie/parser/moshi/c;F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
