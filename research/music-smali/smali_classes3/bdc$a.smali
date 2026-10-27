.class Lbdc$a;
.super Ljava/lang/Object;
.source "MusicContinuePlayModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lbdc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lbdc;

    invoke-direct {v0}, Lbdc;-><init>()V

    sput-object v0, Lbdc$a;->a:Lbdc;

    return-void
.end method

.method static synthetic a()Lbdc;
    .locals 1

    .line 33
    sget-object v0, Lbdc$a;->a:Lbdc;

    return-object v0
.end method
