.class public Llc;
.super Ljava/lang/Object;
.source "Font.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:F

.field private e:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Llc;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Llc;->b:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Llc;->c:Ljava/lang/String;

    .line 25
    iput p4, p0, Llc;->d:F

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Llc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Llc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Llc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Landroid/graphics/Typeface;
    .locals 1

    .line 46
    iget-object v0, p0, Llc;->e:Landroid/graphics/Typeface;

    return-object v0
.end method
