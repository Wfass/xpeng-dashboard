.class Layr$a;
.super Ljava/lang/Object;
.source "MusicCollectManagerOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Layr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Layr;

    invoke-direct {v0}, Layr;-><init>()V

    sput-object v0, Layr$a;->a:Layr;

    return-void
.end method
