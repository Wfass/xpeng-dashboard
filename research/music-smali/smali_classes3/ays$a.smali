.class Lays$a;
.super Ljava/lang/Object;
.source "MusicFetchManagerOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lays;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lays;

    invoke-direct {v0}, Lays;-><init>()V

    sput-object v0, Lays$a;->a:Lays;

    return-void
.end method
