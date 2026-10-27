.class public final Ldp$b;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Ldp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:[Ldp$c;


# direct methods
.method public constructor <init>([Ldp$c;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Ldp$b;->a:[Ldp$c;

    return-void
.end method


# virtual methods
.method public a()[Ldp$c;
    .locals 1

    .line 174
    iget-object v0, p0, Ldp$b;->a:[Ldp$c;

    return-object v0
.end method
