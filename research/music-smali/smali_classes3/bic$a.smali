.class Lbic$a;
.super Ljava/lang/Object;
.source "BluetoothMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lbic;

    invoke-direct {v0}, Lbic;-><init>()V

    sput-object v0, Lbic$a;->a:Lbic;

    return-void
.end method
