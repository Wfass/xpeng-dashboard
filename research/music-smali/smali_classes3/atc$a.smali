.class Latc$a;
.super Ljava/lang/Object;
.source "CollectedMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Latc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Latc;

    invoke-direct {v0}, Latc;-><init>()V

    sput-object v0, Latc$a;->a:Latc;

    return-void
.end method
