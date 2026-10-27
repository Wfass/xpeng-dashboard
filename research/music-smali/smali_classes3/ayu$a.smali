.class Layu$a;
.super Ljava/lang/Object;
.source "NetRadioCollectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Layu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Layu;

    invoke-direct {v0}, Layu;-><init>()V

    sput-object v0, Layu$a;->a:Layu;

    return-void
.end method
