.class Lbcs$a;
.super Ljava/lang/Object;
.source "NeteaseAlbumModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbcs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lbcs;

    invoke-direct {v0}, Lbcs;-><init>()V

    sput-object v0, Lbcs$a;->a:Lbcs;

    return-void
.end method
