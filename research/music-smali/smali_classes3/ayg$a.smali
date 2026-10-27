.class Layg$a;
.super Ljava/lang/Object;
.source "AudioVolumeModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Layg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Layg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Layg;-><init>(Layg$1;)V

    sput-object v0, Layg$a;->a:Layg;

    return-void
.end method
