.class Lbcd$a;
.super Ljava/lang/Object;
.source "KugouAlbumModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbcd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lbcd;

    invoke-direct {v0}, Lbcd;-><init>()V

    sput-object v0, Lbcd$a;->a:Lbcd;

    return-void
.end method
