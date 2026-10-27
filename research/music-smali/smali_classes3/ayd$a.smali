.class Layd$a;
.super Ljava/lang/Object;
.source "MusicServiceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Layd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Layd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Layd;-><init>(Layd$1;)V

    sput-object v0, Layd$a;->a:Layd;

    return-void
.end method

.method static synthetic a()Layd;
    .locals 1

    .line 20
    sget-object v0, Layd$a;->a:Layd;

    return-object v0
.end method
