export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  graphql_public: {
    Tables: {
      [_ in never]: never
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      graphql: {
        Args: {
          extensions?: Json
          operationName?: string
          query?: string
          variables?: Json
        }
        Returns: Json
      }
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
  public: {
    Tables: {
      makes: {
        Row: {
          created_at: string
          id: string
          logo_url: string | null
          name: string
        }
        Insert: {
          created_at?: string
          id?: string
          logo_url?: string | null
          name: string
        }
        Update: {
          created_at?: string
          id?: string
          logo_url?: string | null
          name?: string
        }
        Relationships: []
      }
      models: {
        Row: {
          body_type: string
          created_at: string
          id: string
          image_url: string | null
          make_id: string
          name: string
        }
        Insert: {
          body_type: string
          created_at?: string
          id?: string
          image_url?: string | null
          make_id: string
          name: string
        }
        Update: {
          body_type?: string
          created_at?: string
          id?: string
          image_url?: string | null
          make_id?: string
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "models_make_id_fkey"
            columns: ["make_id"]
            isOneToOne: false
            referencedRelation: "makes"
            referencedColumns: ["id"]
          },
        ]
      }
      profiles: {
        Row: {
          created_at: string
          email: string | null
          full_name: string | null
          id: string
          updated_at: string
        }
        Insert: {
          created_at?: string
          email?: string | null
          full_name?: string | null
          id: string
          updated_at?: string
        }
        Update: {
          created_at?: string
          email?: string | null
          full_name?: string | null
          id?: string
          updated_at?: string
        }
        Relationships: []
      }
      reviews: {
        Row: {
          body: string | null
          created_at: string
          id: string
          model_id: string
          rating: number
          title: string | null
          user_id: string
        }
        Insert: {
          body?: string | null
          created_at?: string
          id?: string
          model_id: string
          rating: number
          title?: string | null
          user_id: string
        }
        Update: {
          body?: string | null
          created_at?: string
          id?: string
          model_id?: string
          rating?: number
          title?: string | null
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "reviews_model_id_fkey"
            columns: ["model_id"]
            isOneToOne: false
            referencedRelation: "models"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "reviews_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      safety_ratings: {
        Row: {
          model_id: string
          ncap_rating: number | null
        }
        Insert: {
          model_id: string
          ncap_rating?: number | null
        }
        Update: {
          model_id?: string
          ncap_rating?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "safety_ratings_model_id_fkey"
            columns: ["model_id"]
            isOneToOne: true
            referencedRelation: "models"
            referencedColumns: ["id"]
          },
        ]
      }
      shortlists: {
        Row: {
          created_at: string
          id: string
          notes: string | null
          user_id: string
          variant_id: string
        }
        Insert: {
          created_at?: string
          id?: string
          notes?: string | null
          user_id: string
          variant_id: string
        }
        Update: {
          created_at?: string
          id?: string
          notes?: string | null
          user_id?: string
          variant_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "shortlists_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "shortlists_variant_id_fkey"
            columns: ["variant_id"]
            isOneToOne: false
            referencedRelation: "variants"
            referencedColumns: ["id"]
          },
        ]
      }
      specs: {
        Row: {
          airbags_count: number | null
          boot_space_liters: number | null
          engine_cc: number | null
          ground_clearance_mm: number | null
          has_abs: boolean | null
          has_esc: boolean | null
          kerb_weight_kg: number | null
          mileage_kmpl: number | null
          power_hp: number | null
          seating_capacity: number | null
          torque_nm: number | null
          variant_id: string
        }
        Insert: {
          airbags_count?: number | null
          boot_space_liters?: number | null
          engine_cc?: number | null
          ground_clearance_mm?: number | null
          has_abs?: boolean | null
          has_esc?: boolean | null
          kerb_weight_kg?: number | null
          mileage_kmpl?: number | null
          power_hp?: number | null
          seating_capacity?: number | null
          torque_nm?: number | null
          variant_id: string
        }
        Update: {
          airbags_count?: number | null
          boot_space_liters?: number | null
          engine_cc?: number | null
          ground_clearance_mm?: number | null
          has_abs?: boolean | null
          has_esc?: boolean | null
          kerb_weight_kg?: number | null
          mileage_kmpl?: number | null
          power_hp?: number | null
          seating_capacity?: number | null
          torque_nm?: number | null
          variant_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "specs_variant_id_fkey"
            columns: ["variant_id"]
            isOneToOne: true
            referencedRelation: "variants"
            referencedColumns: ["id"]
          },
        ]
      }
      variants: {
        Row: {
          created_at: string
          ex_showroom_price: number
          fuel_type: string
          id: string
          model_id: string
          name: string
          transmission: string
        }
        Insert: {
          created_at?: string
          ex_showroom_price: number
          fuel_type: string
          id?: string
          model_id: string
          name: string
          transmission: string
        }
        Update: {
          created_at?: string
          ex_showroom_price?: number
          fuel_type?: string
          id?: string
          model_id?: string
          name?: string
          transmission?: string
        }
        Relationships: [
          {
            foreignKeyName: "variants_model_id_fkey"
            columns: ["model_id"]
            isOneToOne: false
            referencedRelation: "models"
            referencedColumns: ["id"]
          },
        ]
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      recommend_cars: {
        Args: {
          p_max_price: number
          p_min_price: number
          p_priority?: string
          p_usage?: string[]
        }
        Returns: {
          airbags: number
          best_price: number
          best_variant: string
          best_variant_id: string
          body_type: string
          engine_cc: number
          fuel_type: string
          has_abs: boolean
          has_esc: boolean
          make_name: string
          mileage: number
          model_id: string
          model_name: string
          ncap_rating: number
          power_hp: number
          price_max: number
          price_min: number
          score: number
          seating_capacity: number
          transmission: string
          variant_count: number
        }[]
      }
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type DatabaseWithoutInternals = Omit<Database, "__InternalSupabase">

type DefaultSchema = DatabaseWithoutInternals[Extract<keyof Database, "public">]

export type Tables<
  DefaultSchemaTableNameOrOptions extends
    | keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
        DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
      DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : DefaultSchemaTableNameOrOptions extends keyof (DefaultSchema["Tables"] &
        DefaultSchema["Views"])
    ? (DefaultSchema["Tables"] &
        DefaultSchema["Views"])[DefaultSchemaTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  DefaultSchemaEnumNameOrOptions extends
    | keyof DefaultSchema["Enums"]
    | { schema: keyof DatabaseWithoutInternals },
  EnumName extends DefaultSchemaEnumNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = DefaultSchemaEnumNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : DefaultSchemaEnumNameOrOptions extends keyof DefaultSchema["Enums"]
    ? DefaultSchema["Enums"][DefaultSchemaEnumNameOrOptions]
    : never

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof DefaultSchema["CompositeTypes"]
    | { schema: keyof DatabaseWithoutInternals },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"]
    : never = never,
> = PublicCompositeTypeNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof DefaultSchema["CompositeTypes"]
    ? DefaultSchema["CompositeTypes"][PublicCompositeTypeNameOrOptions]
    : never

export const Constants = {
  graphql_public: {
    Enums: {},
  },
  public: {
    Enums: {},
  },
} as const

