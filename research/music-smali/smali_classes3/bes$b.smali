.class Lbes$b;
.super Ljava/lang/Object;
.source "RxConcentrationModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lbes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lbes;

    invoke-direct {v0}, Lbes;-><init>()V

    sput-object v0, Lbes$b;->a:Lbes;

    return-void
.end method

.method static synthetic a()Lbes;
    .locals 1

    .line 43
    sget-object v0, Lbes$b;->a:Lbes;

    return-object v0
.end method
