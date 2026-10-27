.class Layo$a;
.super Ljava/lang/Object;
.source "MusicAlbumModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Layo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Layo;

    invoke-direct {v0}, Layo;-><init>()V

    sput-object v0, Layo$a;->a:Layo;

    return-void
.end method
