.class Lawo$a;
.super Ljava/lang/Object;
.source "HistoryMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lawo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lawo;

    invoke-direct {v0}, Lawo;-><init>()V

    sput-object v0, Lawo$a;->a:Lawo;

    return-void
.end method
