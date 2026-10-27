.class Lbag$a;
.super Ljava/lang/Object;
.source "MusicLoginUidCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lbag;

    invoke-direct {v0}, Lbag;-><init>()V

    sput-object v0, Lbag$a;->a:Lbag;

    return-void
.end method
