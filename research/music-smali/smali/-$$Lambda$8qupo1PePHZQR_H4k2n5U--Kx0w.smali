.class public final synthetic L-$$Lambda$8qupo1PePHZQR_H4k2n5U--Kx0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$8qupo1PePHZQR_H4k2n5U--Kx0w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$8qupo1PePHZQR_H4k2n5U--Kx0w;

    invoke-direct {v0}, L-$$Lambda$8qupo1PePHZQR_H4k2n5U--Kx0w;-><init>()V

    sput-object v0, L-$$Lambda$8qupo1PePHZQR_H4k2n5U--Kx0w;->INSTANCE:L-$$Lambda$8qupo1PePHZQR_H4k2n5U--Kx0w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/text/SimpleDateFormat;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
