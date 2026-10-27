.class Lask$b;
.super Ljava/lang/Object;
.source "AudioFocusModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Lask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 201
    new-instance v0, Lask;

    invoke-direct {v0}, Lask;-><init>()V

    sput-object v0, Lask$b;->a:Lask;

    return-void
.end method
