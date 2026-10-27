.class Lazt$a;
.super Ljava/lang/Object;
.source "LatelyMusicOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lazt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lazt;

    invoke-direct {v0}, Lazt;-><init>()V

    sput-object v0, Lazt$a;->a:Lazt;

    return-void
.end method
