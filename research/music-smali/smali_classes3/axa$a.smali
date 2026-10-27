.class Laxa$a;
.super Ljava/lang/Object;
.source "MusicCollectLoadingModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Laxa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Laxa;

    invoke-direct {v0}, Laxa;-><init>()V

    sput-object v0, Laxa$a;->a:Laxa;

    return-void
.end method
