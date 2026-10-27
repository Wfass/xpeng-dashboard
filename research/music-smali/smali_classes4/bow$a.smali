.class Lbow$a;
.super Ljava/lang/Object;
.source "SpeechCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lbow;

    invoke-direct {v0}, Lbow;-><init>()V

    sput-object v0, Lbow$a;->a:Lbow;

    return-void
.end method
