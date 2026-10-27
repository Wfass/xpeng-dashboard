.class Lbim$a;
.super Ljava/lang/Object;
.source "MusicRequestModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lbim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lbim;

    invoke-direct {v0}, Lbim;-><init>()V

    sput-object v0, Lbim$a;->a:Lbim;

    return-void
.end method

.method static synthetic a()Lbim;
    .locals 1

    .line 39
    sget-object v0, Lbim$a;->a:Lbim;

    return-object v0
.end method
